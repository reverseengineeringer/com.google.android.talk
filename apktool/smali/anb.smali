.class public final Lanb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2024
    iput-object p1, p0, Lanb;->a:Landroid/content/Context;

    iput-object p2, p0, Lanb;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 3

    .prologue
    .line 1027
    iget-object v0, p0, Lanb;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 1028
    if-nez v1, :cond_0

    .line 1029
    const/4 v0, 0x0

    .line 1034
    :goto_0
    return-object v0

    .line 1031
    :cond_0
    iget-object v0, p0, Lanb;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1032
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lanb;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1034
    goto :goto_0
.end method
