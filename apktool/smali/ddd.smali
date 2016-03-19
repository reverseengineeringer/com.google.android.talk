.class public final Lddd;
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
.field final synthetic a:Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lddd;->a:Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 4113
    iget-object v0, p0, Lddd;->a:Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;

    .line 5026
    iget-object v0, v0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->h:Ljava/lang/String;

    .line 4113
    if-eqz v0, :cond_0

    .line 4114
    const-string v3, "_id =?"

    .line 4115
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lddd;->a:Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;

    .line 6026
    iget-object v1, v1, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->h:Ljava/lang/String;

    .line 4115
    aput-object v1, v4, v0

    .line 4116
    iget-object v9, p0, Lddd;->a:Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;

    iget-object v0, p0, Lddd;->a:Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;

    .line 7026
    iget-object v0, v0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->j:Landroid/database/sqlite/SQLiteDatabase;

    .line 4117
    const-string v1, "apn"

    .line 8026
    sget-object v2, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->i:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    .line 4117
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 9026
    iput-object v0, v9, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->f:Landroid/database/Cursor;

    .line 110
    :cond_0
    return-object v5
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Lddd;->a:Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;

    .line 2026
    iget-object v0, v0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->f:Landroid/database/Cursor;

    .line 1132
    if-nez v0, :cond_0

    .line 1133
    iget-object v0, p0, Lddd;->a:Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->finish()V

    .line 1134
    :goto_0
    return-void

    .line 1136
    :cond_0
    iget-object v0, p0, Lddd;->a:Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;

    .line 3026
    iget-object v0, v0, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->f:Landroid/database/Cursor;

    .line 1136
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1138
    iget-object v0, p0, Lddd;->a:Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;

    .line 4026
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/phone/ApnEditorActivity;->a()V

    goto :goto_0
.end method
