import fs from 'fs';

const rawItems = JSON.parse(fs.readFileSync('scratch/batch3_raw_items.json', 'utf8'));
const wk = JSON.parse(fs.readFileSync('scratch/wk_batch3_subjects.json', 'utf8'));
const wkMap = new Map(wk.map(s => [s.id, s]));
const byKey = new Map(wk.map(s => [`${s.object}:${s.data.characters || s.data.slug}`, s]));

const p1 = JSON.parse(fs.readFileSync('scratch/final_proposed_updates_31_33.json', 'utf8'));
const p2 = JSON.parse(fs.readFileSync('scratch/final_proposed_updates_34_36.json', 'utf8'));
const p3 = JSON.parse(fs.readFileSync('scratch/final_proposed_updates_37_39.json', 'utf8'));
const propById = new Map([...p1, ...p2, ...p3].map(p => [p.id, p]));

function toSlug(s) {
  return s
    .toLowerCase()
    .replace(/[^\w\s-]/g, '')
    .trim()
    .replace(/\s+/g, '-');
}

function toTitleCase(s) {
  return (s || '')
    .trim()
    .replace(/\w\S*/g, (txt) => txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase());
}

function escapeSql(str) {
  return (str || '').replace(/'/g, "''");
}

// Specific overrides for items with complex parentheticals or multi-word translations
const overrides = {
  // Level 31
  "扁": { primary: "Papan Nama", alts: ["Lemari Buku", "Nameplate"] },
  "盗撮": { primary: "Memotret Diam-diam", alts: ["Merekam Diam-diam", "Candid Ilegal", "Sneak Shot", "Secret Photography"] },
  "積む": { primary: "Menumpuk", alts: ["Memuat", "Menumpuk Barang", "Memuat Pengalaman", "To Pile Up", "To Stack"] },
  "貯める": { primary: "Menabung", alts: ["Mengumpulkan", "Menyimpan Uang", "Mengumpulkan Harta", "To Save Money"] },
  "内偵": { primary: "Penyelidikan Rahasia", alts: ["Pengintaian Diam-diam", "Investigasi Rahasia", "Pengintaian Rahasia", "Secret Investigation"] },

  // Level 32
  "酸": { primary: "Asam", alts: ["Zat Asam", "Rasa Asam", "Acid", "Sour"] },
  "飼": { primary: "Memelihara", alts: ["Berternak", "Memelihara Hewan", "Domesticate", "Raise"] },
  "出版する": { primary: "Menerbitkan", alts: ["Mempublikasikan", "Penerbitan Buku", "To Publish"] },
  "延長する": { primary: "Memperpanjang", alts: ["Memperpanjang Waktu", "Ekstensi", "To Extend"] },
  "漏らす": { primary: "Membocorkan", alts: ["Membocorkan Rahasia", "Meneteskan", "To Leak"] },
  "老眼": { primary: "Mata Tua", alts: ["Rabun Dekat Lansia", "Presbiopi", "Aging Eyes"] },
  "購読する": { primary: "Berlangganan", alts: ["Langganan", "Berlangganan Koran", "To Subscribe"] },
  "通訳": { primary: "Penerjemah Lisan", alts: ["Juru Bahasa", "Interpreter"] },
  "雑音": { primary: "Derau", alts: ["Suara Bising", "Bunyi Gangguan", "Noise"] },

  // Level 33
  "乾かす": { primary: "Mengeringkan", alts: ["Menjemur", "Mengeringkan Pakaian", "To Dry"] },
  "熟れる": { primary: "Matang", alts: ["Menjadi Masak", "Ranum", "To Ripen"] },
  "盛る": { primary: "Menghidangkan", alts: ["Menumpuk", "Menyajikan", "To Serve"] },
  "納める": { primary: "Membayar", alts: ["Menyerahkan", "Menyimpan", "Membayar Pajak", "To Pay", "To Settle"] },
  "貯まる": { primary: "Terkumpul", alts: ["Tertabung", "Tersimpan", "To Accumulate"] },

  // Level 34
  "傷つける": { primary: "Melukai", alts: ["Menyakiti", "Melukai Hati", "To Wound", "To Hurt"] },
  "傷む": { primary: "Rusak", alts: ["Membusuk", "Cacat", "To Be Damaged"] },
  "承る": { primary: "Menerima", alts: ["Mendengarkan", "Memahami", "To Hear", "To Receive"] },
  "拝見する": { primary: "Melihat", alts: ["Menelaah", "Menonton", "To Look At"] },
  "汚す": { primary: "Mengotori", alts: ["Menodai", "To Pollute", "To Dirty"] },
  "発射する": { primary: "Meluncurkan", alts: ["Menembakkan", "To Launch", "To Fire"] },
  "発揮する": { primary: "Mengerahkan", alts: ["Menunjukkan", "Menampilkan", "To Display", "To Exhibit"] },
  "込める": { primary: "Memasukkan", alts: ["Mengisi Penuh", "Menaruh Perasaan", "To Include", "To Put Into"] },

  // Level 35
  "将": { primary: "Panglima", alts: ["Komandan", "Jenderal", "Commander"] },
  "測る": { primary: "Mengukur", alts: ["Menakar", "Menghitung", "To Measure"] },
  "破る": { primary: "Merobek", alts: ["Memecahkan", "Mengingkari", "To Tear", "To Break"] },

  // Level 36
  "湧": { primary: "Memancar", alts: ["Membual", "Mata Air", "Gush", "Spring"] },
  "傷める": { primary: "Merusak", alts: ["Mencederai", "Menyakiti", "To Damage", "To Hurt"] },
  "奴ら": { primary: "Mereka", alts: ["Orang-orang Itu", "Geng Itu", "They", "Those Guys"] },
  "摘む": { primary: "Memetik", alts: ["Mencubit", "Mencomot", "To Pluck", "To Pinch"] },
  "湧く": { primary: "Memancar", alts: ["Membual", "Meluap", "To Gush", "To Well Up"] },
  "灯る": { primary: "Menyala", alts: ["Menyala Terang", "Menyala Lampu", "To Light Up"] },

  // Level 37
  "塁": { primary: "Pangkalan Base", alts: ["Benteng", "Base", "Fort"] },
  "旬": { primary: "Musim Terbaik", alts: ["Puncak Musim", "In Season"] },
  "二日酔い": { primary: "Pengar", alts: ["Mabuk Pasca Minum", "Hangover"] },
  "削減": { primary: "Pemotongan", alts: ["Pemangkasan", "Pengurangan", "Reduction", "Cut"] },
  "募る": { primary: "Menggalang", alts: ["Merekrut", "Memuncak", "To Recruit", "To Raise"] },
  "抱く": { primary: "Memeluk", alts: ["Memeluk Erat", "Menyimpan Perasaan", "To Embrace", "To Hold"] },
  "掲げる": { primary: "Mengibarkan", alts: ["Mengusung", "Memajang", "To Raise", "To Display"] },
  "派遣": { primary: "Penyaluran Kerja", alts: ["Outsourcing", "Disposisi", "Dispatch"] },
  "潰れる": { primary: "Remuk", alts: ["Hancur", "Gulung Tikar", "Bangkrut", "To Be Crushed", "To Collapse"] },
  "臨時": { primary: "Sementara", alts: ["Luar Biasa", "Insidental", "Temporary"] },
  "貴様": { primary: "Kau Keparat", alts: ["Kamu Brengsek", "Kau Brengsek", "You Bastard"] },

  // Level 38
  "致": { primary: "Menyebabkan", alts: ["Melakukan", "Do", "Cause"] },
  "刊行する": { primary: "Menerbitkan", alts: ["Mencetak", "To Publish"] },
  "奥さん": { primary: "Istri Orang", alts: ["Nyonya", "Istri Orang Lain", "Wife"] },
  "宜しい": { primary: "Baiklah", alts: ["Boleh", "Silakan", "All Right", "Good"] },
  "懸ける": { primary: "Mempertaruhkan", alts: ["Memasang Taruhan", "To Risk", "To Stake"] },
  "抑止": { primary: "Daya Tangkal", alts: ["Pencegahan", "Deterrent", "Deterrence"] },
  "縄張り": { primary: "Wilayah Kekuasaan", alts: ["Teritori", "Turf"] },
  "繰る": { primary: "Membalik Halaman", alts: ["Mengulur", "To Turn (Pages)"] },
  "返還": { primary: "Pengembalian", alts: ["Restitusi", "Pemulihan", "Return", "Restitution"] },
  "還元": { primary: "Restorasi", alts: ["Mengembalikan", "Reduksi", "Return", "Restoration"] },
  "食う": { primary: "Makan", alts: ["Menggigit", "Santap", "To Eat", "To Bite"] },
  "配慮": { primary: "Tenggang Rasa", alts: ["Pertimbangan", "Kepedulian", "Perhatian", "Consideration"] },

  // Level 39
  "御": { primary: "Yang Terhormat", alts: ["Awalan Sopan", "Honorable"] },
  "棋": { primary: "Catur Jepang", alts: ["Papan Catur Jepang", "Shogi", "Go"] },
  "甲": { primary: "Cangkang", alts: ["Punggung Tangan", "Golongan A", "Carapace", "Shell"] },
  "邦": { primary: "Negara", alts: ["Negeri Asal", "Country", "Home Country"] },
  "弾く": { primary: "Memetik", alts: ["Memainkan", "Bermain Piano", "To Play", "To Pluck"] },
  "御覧になる": { primary: "Melihat", alts: ["Menonton", "Menyaksikan", "To Look At"] },
  "払い戻す": { primary: "Mengembalikan Uang", alts: ["Refund", "Ganti Rugi", "To Refund"] },
  "枠組み": { primary: "Kerangka Kerja", alts: ["Framework", "Skema", "Framework"] },
  "棋士": { primary: "Pemain Shogi", alts: ["Pemain Catur Profesional", "Pemain Go", "Shogi Player"] },
  "棋院": { primary: "Institut Catur", alts: ["Institut Shogi", "Nihon Ki-in", "Board Game Institute"] },
  "甲斐": { primary: "Manfaat", alts: ["Arti", "Tidak Sia-sia", "Worth", "Benefit"] },
  "譲る": { primary: "Menyerahkan", alts: ["Mengalah", "Memberikan", "To Hand Over", "To Yield"] },
  "由緒正しい": { primary: "Silsilah Mulia", alts: ["Berasal dari Silsilah Terpandang", "Bersejarah Panjang", "Silsilah Terpandang", "Of Honorable Lineage"] }
};

function generateSql(items, title) {
  let sql = `-- ${title}\n-- Total items: ${items.length}\n\nDO $$\nBEGIN\n\n`;

  for (const item of items) {
    const primaryEsc = escapeSql(item.newPrimary);
    const slugEsc = escapeSql(item.newSlug);

    sql += `  -- [${item.type.toUpperCase()}] ${item.character} (Level ${item.level})\n`;
    sql += `  UPDATE item_meanings SET meaning = '${primaryEsc}', primary_meaning = true, accepted_answer = true WHERE id = '${item.meaning_id}';\n`;
    sql += `  UPDATE items SET slug = '${slugEsc}' WHERE id = '${item.item_id}';\n`;

    for (const alt of item.alternatives) {
      const altEsc = escapeSql(alt);
      sql += `  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '${item.item_id}' AND LOWER(TRIM(meaning)) = LOWER(TRIM('${altEsc}'))) THEN\n`;
      sql += `    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('${item.item_id}', '${altEsc}', false, true);\n`;
      sql += `  END IF;\n`;
    }
    sql += `\n`;
  }

  sql += `END $$;\n`;
  return sql;
}

async function main() {
  console.log(`Processing Batch 3: ${rawItems.length} items (Levels 31-39)...`);

  const processed = [];

  for (const item of rawItems) {
    let s = item.wanikani_id ? wkMap.get(item.wanikani_id) : null;
    if (!s) s = byKey.get(`${item.type}:${item.character || item.slug}`);
    const wkPrimary = s?.data.meanings.find(m => m.primary)?.meaning || '';
    const wkAll = s?.data.meanings.map(m => m.meaning) || [];

    const prop = propById.get(item.item_id);

    let newPrimary = '';
    let extraAlts = [];

    if (overrides[item.character]) {
      newPrimary = overrides[item.character].primary;
      extraAlts = overrides[item.character].alts;
    } else {
      // Split current_meaning by / or ,
      const rawParts = item.current_meaning.split(/[/,]/);
      const cleanParts = rawParts.map(p => p.replace(/\(.*?\)/g, '').trim()).filter(Boolean);
      newPrimary = toTitleCase(cleanParts[0] || item.current_meaning.replace(/\(.*?\)/g, '').trim());
      extraAlts = cleanParts.slice(1);
    }

    // Safety checks
    if (newPrimary.includes('/') || newPrimary.includes(',')) {
      throw new Error(`Invalid primary with slash/comma: ${item.character} -> ${newPrimary}`);
    }

    const newSlug = toSlug(newPrimary);

    // Collect all alternatives:
    // 1. All raw parts
    const oldParts = item.current_meaning
      .split(/[/,]/)
      .map(x => x.replace(/\(.*?\)/g, '').trim())
      .filter(x => x.length > 0 && x.toLowerCase() !== newPrimary.toLowerCase());

    // 2. Extra alts
    const extraClean = extraAlts.filter(x => x.toLowerCase() !== newPrimary.toLowerCase());

    // 3. Prop synonyms
    const propSyns = (prop?.synonyms || []).filter(x => x.toLowerCase() !== newPrimary.toLowerCase());

    // 4. WK meanings
    const wkMeanings = wkAll.filter(x => x.toLowerCase() !== newPrimary.toLowerCase());

    // Combine and deduplicate
    const seen = new Set([newPrimary.toLowerCase()]);
    const alternatives = [];

    for (const alt of [...extraClean, ...oldParts, ...propSyns, ...wkMeanings]) {
      const lower = alt.toLowerCase().trim();
      if (lower.length > 0 && !seen.has(lower)) {
        seen.add(lower);
        alternatives.push(alt.trim());
      }
    }

    processed.push({
      item_id: item.item_id,
      meaning_id: item.meaning_id,
      character: item.character,
      level: item.level,
      type: item.type,
      newPrimary,
      newSlug,
      alternatives
    });
  }

  console.log(`Successfully mapped all ${processed.length} items for Batch 3!`);

  // Split into 9 SQL parts (Level 31 to 39)
  for (let lvl = 31; lvl <= 39; lvl++) {
    const partItems = processed.filter(i => i.level === lvl);
    const partNum = lvl - 30; // 1 to 9
    const fileName = `sql/migration_batch3_part${partNum}.sql`;
    const sqlContent = generateSql(partItems, `Migration: Batch 3 Part ${partNum} (Level ${lvl})`);
    fs.writeFileSync(fileName, sqlContent, 'utf8');
    console.log(`Wrote ${partItems.length} items to ${fileName}`);
  }
}

main().catch(err => {
  console.error('Fatal error:', err);
  process.exit(1);
});
