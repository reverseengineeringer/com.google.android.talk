.class public final Ldde;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Ldde;->d:Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;

    iput-object p2, p0, Ldde;->a:Ljava/lang/String;

    iput-object p3, p0, Ldde;->b:Ljava/lang/String;

    iput-object p4, p0, Ldde;->c:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1299
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1303
    const-string v2, "name"

    iget-object v0, p0, Ldde;->a:Ljava/lang/String;

    .line 1305
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Ldde;->d:Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->ss:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1303
    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    const-string v0, "mmsproxy"

    iget-object v2, p0, Ldde;->d:Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;

    .line 2026
    iget-object v2, v2, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->b:Landroid/preference/EditTextPreference;

    .line 1306
    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    .line 3026
    invoke-static {v2}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1306
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    const-string v0, "mmsport"

    iget-object v2, p0, Ldde;->d:Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;

    .line 4026
    iget-object v2, v2, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->c:Landroid/preference/EditTextPreference;

    .line 1307
    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    .line 5026
    invoke-static {v2}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1307
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    const-string v0, "mmsc"

    iget-object v2, p0, Ldde;->d:Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;

    .line 6026
    iget-object v2, v2, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->a:Landroid/preference/EditTextPreference;

    .line 1308
    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    .line 7026
    invoke-static {v2}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1308
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    const-string v0, "type"

    const-string v2, "mms"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    const-string v0, "mcc"

    iget-object v2, p0, Ldde;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    const-string v0, "mnc"

    iget-object v2, p0, Ldde;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    const-string v2, "numeric"

    iget-object v0, p0, Ldde;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Ldde;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    iget-object v0, p0, Ldde;->d:Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;

    .line 8026
    iget-object v0, v0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->d:Ljava/lang/String;

    .line 1317
    if-eqz v0, :cond_0

    iget-object v0, p0, Ldde;->d:Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;

    .line 9026
    iget-object v0, v0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->e:Ljava/lang/String;

    .line 1317
    if-eqz v0, :cond_0

    .line 1318
    iget-object v0, p0, Ldde;->d:Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;

    .line 10026
    iget-object v0, v0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->d:Ljava/lang/String;

    .line 1318
    iget-object v2, p0, Ldde;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldde;->d:Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;

    .line 11026
    iget-object v0, v0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->e:Ljava/lang/String;

    .line 1318
    iget-object v2, p0, Ldde;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1319
    const-string v0, "current"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1323
    :cond_0
    iget-object v0, p0, Ldde;->d:Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;

    .line 12026
    iget-boolean v0, v0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->g:Z

    .line 1323
    if-eqz v0, :cond_3

    .line 1324
    iget-object v0, p0, Ldde;->d:Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;

    .line 13026
    iget-object v0, v0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->j:Landroid/database/sqlite/SQLiteDatabase;

    .line 1324
    const-string v2, "apn"

    invoke-virtual {v0, v2, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 296
    :goto_2
    return-object v6

    .line 1305
    :cond_1
    iget-object v0, p0, Ldde;->a:Ljava/lang/String;

    goto/16 :goto_0

    .line 1315
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 1327
    :cond_3
    const-string v0, "_id =?"

    .line 1328
    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Ldde;->d:Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;

    .line 14026
    iget-object v4, v4, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->h:Ljava/lang/String;

    .line 1328
    aput-object v4, v2, v3

    .line 1329
    iget-object v3, p0, Ldde;->d:Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;

    .line 15026
    iget-object v3, v3, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->j:Landroid/database/sqlite/SQLiteDatabase;

    .line 1329
    const-string v4, "apn"

    invoke-virtual {v3, v4, v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2
.end method
