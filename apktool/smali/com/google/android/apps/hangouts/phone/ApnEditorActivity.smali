.class public Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;
.super Landroid/preference/PreferenceActivity;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final i:[Ljava/lang/String;

.field private static k:Ljava/lang/String;


# instance fields
.field public a:Landroid/preference/EditTextPreference;

.field public b:Landroid/preference/EditTextPreference;

.field public c:Landroid/preference/EditTextPreference;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Landroid/database/Cursor;

.field public g:Z

.field public h:Ljava/lang/String;

.field public j:Landroid/database/sqlite/SQLiteDatabase;

.field private l:Landroid/preference/EditTextPreference;

.field private m:Landroid/preference/EditTextPreference;

.field private n:Landroid/preference/EditTextPreference;

.field private o:Z

.field private p:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "numeric"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->i:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    if-eqz p0, :cond_0

    sget-object v0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    :cond_0
    const-string p0, ""

    .line 413
    :cond_1
    return-object p0
.end method

.method private a(Z)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 286
    iget-object v2, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->l:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 287
    iget-object v3, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->m:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 288
    iget-object v4, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->n:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 290
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->b()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    if-nez p1, :cond_0

    .line 291
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->showDialog(I)V

    .line 335
    :goto_0
    return v0

    .line 296
    :cond_0
    new-instance v5, Ldde;

    invoke-direct {v5, p0, v2, v3, v4}, Ldde;-><init>(Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v1, [Ljava/lang/Void;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 333
    invoke-virtual {v5, v2}, Ldde;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v1

    .line 335
    goto :goto_0
.end method

.method private b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 341
    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->l:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 342
    iget-object v2, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->m:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 343
    iget-object v3, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->n:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 345
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 346
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->p:Landroid/content/res/Resources;

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->bY:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 353
    :cond_0
    :goto_0
    return-object v0

    .line 347
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 348
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->p:Landroid/content/res/Resources;

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->ca:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 349
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0xfffe

    and-int/2addr v1, v2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 350
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->p:Landroid/content/res/Resources;

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->cb:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 403
    :cond_0
    sget-object p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->k:Ljava/lang/String;

    .line 405
    :cond_1
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 175
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->g:Z

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->m:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->n:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 1350
    invoke-static {}, Lezm;->k()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_0

    .line 182
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 186
    iget-object v2, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->m:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 187
    iget-object v2, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->n:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 188
    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->d:Ljava/lang/String;

    .line 189
    iput-object v1, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->e:Ljava/lang/String;

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->l:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->b:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->c:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->a:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 206
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->l:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->l:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->b:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->b:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->c:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->c:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->a:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->a:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->m:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->m:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->n:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->n:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 212
    return-void

    .line 195
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->o:Z

    if-eqz v0, :cond_1

    .line 196
    iput-boolean v2, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->o:Z

    .line 198
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->l:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->f:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->b:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->f:Landroid/database/Cursor;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->c:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->f:Landroid/database/Cursor;

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->a:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->f:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->m:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->f:Landroid/database/Cursor;

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->n:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->f:Landroid/database/Cursor;

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 84
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    sget v0, Laal;->hU:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->addPreferencesFromResource(I)V

    .line 88
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->p:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->k:Ljava/lang/String;

    .line 89
    const-string v0, "apn_name"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->l:Landroid/preference/EditTextPreference;

    .line 90
    const-string v0, "apn_mms_proxy"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->b:Landroid/preference/EditTextPreference;

    .line 91
    const-string v0, "apn_mms_port"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->c:Landroid/preference/EditTextPreference;

    .line 92
    const-string v0, "apn_mmsc"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->a:Landroid/preference/EditTextPreference;

    .line 93
    const-string v0, "apn_mcc"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->m:Landroid/preference/EditTextPreference;

    .line 94
    const-string v0, "apn_mnc"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->n:Landroid/preference/EditTextPreference;

    .line 96
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->p:Landroid/content/res/Resources;

    .line 98
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 100
    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->o:Z

    .line 101
    const-string v0, "apn_row_id"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->h:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->h:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->g:Z

    .line 104
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbei;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->j:Landroid/database/sqlite/SQLiteDatabase;

    .line 106
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->g:Z

    if-eqz v0, :cond_3

    .line 107
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->a()V

    .line 1147
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1148
    if-eqz v0, :cond_0

    .line 1149
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 144
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 100
    goto :goto_0

    :cond_2
    move v0, v2

    .line 102
    goto :goto_1

    .line 110
    :cond_3
    new-instance v0, Lddd;

    invoke-direct {v0, p0}, Lddd;-><init>(Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;)V

    new-array v3, v1, [Ljava/lang/Void;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 140
    invoke-virtual {v0, v3}, Lddd;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 359
    if-nez p1, :cond_0

    .line 360
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->b()Ljava/lang/String;

    move-result-object v0

    .line 362
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x104000a

    const/4 v3, 0x0

    .line 363
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 364
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 368
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 222
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 224
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->g:Z

    if-nez v0, :cond_0

    .line 225
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->fk:I

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lcom/google/android/apps/hangouts/R$drawable;->bl:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 227
    :cond_0
    const/4 v0, 0x2

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->fy:I

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 228
    const/4 v0, 0x3

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->fm:I

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    .line 229
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 230
    return v3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 156
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->f:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->f:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->f:Landroid/database/Cursor;

    .line 160
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 259
    packed-switch p1, :pswitch_data_0

    .line 268
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 262
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->finish()V

    .line 265
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 235
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 254
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 1386
    :sswitch_0
    new-instance v1, Lddf;

    invoke-direct {v1, p0}, Lddf;-><init>(Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;)V

    new-array v2, v0, [Ljava/lang/Void;

    const/4 v3, 0x0

    aput-object v3, v2, v4

    .line 1396
    invoke-virtual {v1, v2}, Lddf;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1398
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->finish()V

    goto :goto_0

    .line 241
    :sswitch_1
    invoke-direct {p0, v4}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->finish()V

    goto :goto_0

    .line 247
    :sswitch_2
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->finish()V

    goto :goto_0

    .line 251
    :sswitch_3
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->onBackPressed()V

    goto :goto_0

    .line 235
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x102002c -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 171
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 172
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    .line 217
    const/4 v0, 0x1

    return v0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1

    .prologue
    .line 373
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 375
    if-nez p1, :cond_0

    .line 376
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->b()Ljava/lang/String;

    move-result-object v0

    .line 378
    if-eqz v0, :cond_0

    .line 379
    check-cast p2, Landroid/app/AlertDialog;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 382
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 165
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 166
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 273
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 274
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->f:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 275
    const-string v0, "pos"

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->f:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 277
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 418
    invoke-virtual {p0, p2}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 419
    if-eqz v0, :cond_0

    .line 420
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 422
    :cond_0
    return-void
.end method
