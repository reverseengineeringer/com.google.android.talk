.class Lfyw;
.super Lfir;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lfim;",
        ">",
        "Lfir",
        "<TR;",
        "Lfyx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic i:Landroid/app/Activity;

.field final synthetic j:Lfyu;


# direct methods
.method private constructor <init>(Lfic;)V
    .locals 1

    sget-object v0, Lfzj;->a:Lfib;

    invoke-direct {p0, v0, p1}, Lfir;-><init>(Lfib;Lfic;)V

    return-void
.end method

.method public constructor <init>(Lfic;B)V
    .locals 0

    .prologue
    .line 5000
    invoke-direct {p0, p1}, Lfyw;-><init>(Lfic;)V

    return-void
.end method

.method constructor <init>(Lfyu;Lfic;Landroid/content/Intent;Landroid/graphics/Bitmap;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 8000
    iput-object p1, p0, Lfyw;->j:Lfyu;

    iput-object p3, p0, Lfyw;->a:Landroid/content/Intent;

    iput-object p4, p0, Lfyw;->b:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lfyw;->i:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lfyw;-><init>(Lfic;B)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Lcom/google/android/gms/common/api/Status;)Lfim;
    .locals 1

    .prologue
    .line 7000
    invoke-virtual {p0, p1}, Lfyw;->d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic a(Lfia;)V
    .locals 1

    .prologue
    .line 0
    check-cast p1, Lfyx;

    .line 4000
    iget-object v0, p1, Lflc;->a:Landroid/content/Context;

    .line 3000
    invoke-virtual {p1}, Lfyx;->m()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lfzc;

    invoke-virtual {p0, v0}, Lfyw;->a(Lfzc;)V

    .line 0
    return-void
.end method

.method protected a(Lfzc;)V
    .locals 3

    .prologue
    .line 1000
    :try_start_0
    iget-object v0, p0, Lfyw;->a:Landroid/content/Intent;

    const-string v1, "EXTRA_GOOGLE_HELP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/googlehelp/GoogleHelp;

    iget-object v1, p0, Lfyw;->b:Landroid/graphics/Bitmap;

    new-instance v2, Lfyv;

    invoke-direct {v2, p0}, Lfyv;-><init>(Lfyw;)V

    invoke-interface {p1, v0, v1, v2}, Lfzc;->a(Lcom/google/android/gms/googlehelp/GoogleHelp;Landroid/graphics/Bitmap;Lfyz;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "gH_GoogleHelpApiImpl"

    const-string v2, "Starting help failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2000
    sget-object v0, Lfyu;->a:Lcom/google/android/gms/common/api/Status;

    .line 1000
    invoke-virtual {p0, v0}, Lfyw;->c(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0
.end method

.method protected d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    .prologue
    .line 6000
    return-object p1
.end method
