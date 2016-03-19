.class public Lamv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:I

.field final b:Lanb;


# direct methods
.method public constructor <init>(Lanb;I)V
    .locals 1

    .prologue
    .line 2049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2050
    const/high16 v0, 0xfa00000

    iput v0, p0, Lamv;->a:I

    .line 2051
    iput-object p1, p0, Lamv;->b:Lanb;

    .line 2052
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 3014
    const-string v0, "image_manager_disk_cache"

    invoke-direct {p0, p1, v0}, Lamv;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3016
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 3024
    new-instance v0, Lanb;

    invoke-direct {v0, p1, p2}, Lanb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/high16 v1, 0xfa00000

    invoke-direct {p0, v0, v1}, Lamv;-><init>(Lanb;I)V

    .line 3037
    return-void
.end method


# virtual methods
.method public a()Lamu;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1056
    iget-object v1, p0, Lamv;->b:Lanb;

    invoke-virtual {v1}, Lanb;->a()Ljava/io/File;

    move-result-object v1

    .line 1058
    if-nez v1, :cond_1

    .line 1066
    :cond_0
    :goto_0
    return-object v0

    .line 1062
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1066
    :cond_2
    iget v0, p0, Lamv;->a:I

    invoke-static {v1, v0}, Lanc;->a(Ljava/io/File;I)Lamu;

    move-result-object v0

    goto :goto_0
.end method
