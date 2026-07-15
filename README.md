<div dir="rtl">

# כלי פיתוח - מטלה #1 (Bash, Git, GitHub)

## חברי הצוות + סקריפטים

</div>

<div dir="rtl">

### אורן לוי -
| # | קובץ | תיאור סקריפט |
|---|---|---|
| 1 | [`add_prefix_to_txt_files.sh`](scripts/add_prefix_to_txt_files.sh) | הוספת תחילית לשם הקובץ של כל קבצי ה `txt.` בתיקיה מסוימת |
| 2 | [`delete_files_older_than_x.sh`](scripts/delete_files_older_than_x.sh) | מחיקת קבצים הישנים יותר מ-X ימים, מתיקיה מסוימת |
| 3 | [`kill_processes_by_name.sh`](scripts/kill_processes_by_name.sh) | הריגת כל התהליכים לפי שם |
| 4 | [`current_user_info.sh`](scripts/current_user_info.sh) | מידע על המשתמש הנוכחי – שם, תיקיה ראשית, קבוצות, ו - Shell מוגדר |
| 5 | [`count_files_by_suffix.sh`](scripts/count_files_by_suffix.sh) | ספירת קבצים לפי סיומת |

<br />

### נועם הרמבם -
| # | קובץ | תיאור סקריפט |
|---|---|---|
| 1 | [`backup_directory_to_tar.sh`](scripts/backup_directory_to_tar.sh) | גיבוי תכולה של תיקייה לקובץ tar.gz |
| 2 | [`count_data_in_files.sh`](scripts/count_data_in_files.sh) | ספירת שורות, מילים, ותווים בכל קובץ בתיקיה והדפסתם |
| 3 | [`display_system_uptime.sh`](scripts/display_system_uptime.sh) | הצגת זמן פעילות המערכת |  |
| 4 | [`find_modified_files.sh`](scripts/find_modified_files.sh) | מציאת כל הקבצים ששונו ב-N הימים האחרונים |
| 5 | [`sort_file_lines.sh`](scripts/sort_file_lines.sh) | מיון שורות בקובץ לפי סדר אלפביתי |

</div>

---

<div dir="rtl">

## הכנות לשימוש והרצת הסקריפטים

### חשוב! 
יש לפתוח מראש טרמינל של `git bash`.


<br />

### 1. שכפול הפרויקט למחשב מקומי
יש להריץ את הפקודה הבאה בטרמינל -
```bash
git clone https://github.com/Afeka-DevTools/26b-10142-bash-oren-levi-noam-harambam.git
```

<br />

### 2. הענקת הרשאות הרצה לסקריפטים
יש להריץ את הפקודה הבאה בטרמינל -
```bash
chmod +x scripts/*.sh
```

<br />

### 3. הרצת הסקריפטים

<br />

* **הוספת תחילית לקבצי `txt.` בתיקייה - [`add_prefix_to_txt_files.sh`](scripts/add_prefix_to_txt_files.sh)**
  
**קלט נדרש -**
1. נתיב לתיקייה
2. תחילית להוספה
```bash
./scripts/add_prefix_to_txt_files.sh </path/to/folder> <prefix>
```

<br />

* **מחיקת קבצים ישנים יותר מ - X ימים - [`delete_files_older_than_x.sh`](scripts/delete_files_older_than_x.sh)**

**קלט נדרש -**
1. נתיב לתיקייה
2. מספר הימים לשמירת קבצים
```bash
./scripts/delete_files_older_than_x.sh </path/to/folder> <days>
```

<br />

* **הריגת כל התהליכים לפי שם - [`kill_processes_by_name.sh`](scripts/kill_processes_by_name.sh)**

**קלט נדרש -**
1. שם תהליך להריגה 
```bash
./scripts/kill_processes_by_name.sh <process_name>
```

<br />

* **מידע על המשתמש הנוכחי - [`current_user_info.sh`](scripts/current_user_info.sh)**

**קלט נדרש -** X
```bash
./scripts/current_user_info.sh
```

<br />

* **ספירת קבצים לפי סיומת בתיקייה - [`count_files_by_suffix.sh`](scripts/count_files_by_suffix.sh)**

**קלט נדרש -**
1. נתיב לתיקייה
```bash
./scripts/count_files_by_suffix.sh </path/to/folder>
```

<br />

* **גיבוי תיקייה לקובץ (`tar.gz`) - [`backup_directory_to_tar.sh`](scripts/backup_directory_to_tar.sh)**

**קלט נדרש -** 
1. נתיב לתיקייה שברצונכם לגבות
```bash
./scripts/backup_directory_to_tar.sh </path/to/folder>
```

<br />

* **ספירת שורות / מילים / תווים בכל הקבצים בתיקייה - [`count_data_in_files.sh`](scripts/count_data_in_files.sh)**

**קלט נדרש -**
1. נתיב לתיקייה
```bash
./scripts/count_data_in_files.sh </path/to/folder>
```

<br />

* **הצגת זמן פעילות המערכת - [`display_system_uptime.sh`](scripts/display_system_uptime.sh)**

**קלט נדרש -** X
```bash
./scripts/display_system_uptime.sh
```

<br />

* **מציאת כל הקבצים ששונו ב-N הימים האחרונים - [`find_modified_files.sh`](scripts/find_modified_files.sh)**

**קלט נדרש -**
1. נתיב לתיקייה
2. מספר הימים לבדיקת הקבצים ששינו
```bash
./scripts/find_modified_files.sh </path/to/folder> <days>
```

<br />

* **מיון שורות בקובץ לפי סדר אלפביתי - [`sort_file_lines.sh`](scripts/sort_file_lines.sh)**

**קלט נדרש -**
1. נתיב לקובץ
```bash
./scripts/sort_file_lines.sh </path/to/file>
```

</div>
