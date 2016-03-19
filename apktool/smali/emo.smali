.class final Lemo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lemr;


# instance fields
.field final synthetic a:Landroid/content/ContentValues;

.field final synthetic b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method constructor <init>(Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lemo;->a:Landroid/content/ContentValues;

    iput-object p2, p0, Lemo;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 265
    iget-object v0, p0, Lemo;->a:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 266
    iget-object v0, p0, Lemo;->a:Landroid/content/ContentValues;

    const-string v1, "numeric"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lemo;->a:Landroid/content/ContentValues;

    const-string v1, "key"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lemo;->a:Landroid/content/ContentValues;

    const-string v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lemo;->a:Landroid/content/ContentValues;

    const-string v1, "type"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lemo;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "mmsconfig"

    const/4 v2, 0x0

    iget-object v3, p0, Lemo;->a:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 271
    return-void
.end method
