.class final Lexx;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Landroid/content/res/Resources;

.field final synthetic e:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method constructor <init>(IIILandroid/content/res/Resources;Landroid/graphics/BitmapFactory$Options;)V
    .locals 1

    .prologue
    .line 232
    iput p1, p0, Lexx;->a:I

    iput p2, p0, Lexx;->b:I

    const/16 v0, 0x40

    iput v0, p0, Lexx;->c:I

    iput-object p4, p0, Lexx;->d:Landroid/content/res/Resources;

    iput-object p5, p0, Lexx;->e:Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1235
    const/4 v0, 0x0

    .line 2043
    :goto_0
    sget-object v1, Lexw;->b:Lexd;

    .line 1236
    iget v2, p0, Lexx;->a:I

    iget v3, p0, Lexx;->b:I

    invoke-virtual {v1, v2, v3}, Lexd;->b(II)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lexx;->c:I

    if-ge v0, v1, :cond_2

    .line 3043
    sget-boolean v1, Lexw;->a:Z

    .line 1237
    if-eqz v1, :cond_0

    .line 1238
    iget v1, p0, Lexx;->c:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x37

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "emoji prefill count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " prefillSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1240
    :cond_0
    iget-object v1, p0, Lexx;->d:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/apps/hangouts/R$drawable;->emoji_u00a9:I

    iget-object v3, p0, Lexx;->e:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1241
    if-eqz v1, :cond_1

    .line 4043
    sget-object v2, Lexw;->b:Lexd;

    .line 1242
    invoke-virtual {v2, v1}, Lexd;->a(Landroid/graphics/Bitmap;)V

    .line 1244
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1245
    goto :goto_0

    .line 1246
    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 232
    return-object v0
.end method
