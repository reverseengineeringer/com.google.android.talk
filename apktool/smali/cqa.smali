.class final Lcqa;
.super Lbyp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbyp",
        "<",
        "Ldpp;",
        "Ldsl;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Lbfd;

.field private final f:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lbfd;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Lbyp;-><init>()V

    .line 228
    iput-object p1, p0, Lcqa;->d:Landroid/content/Context;

    .line 229
    iput-object p2, p0, Lcqa;->e:Lbfd;

    .line 230
    iput-object p3, p0, Lcqa;->f:Ljava/lang/String;

    .line 231
    return-void
.end method

.method private a(Lepa;)V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcqa;->d:Landroid/content/Context;

    const-class v1, Lepc;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lepc;

    invoke-virtual {v0, p1}, Lepc;->a(Lepa;)V

    .line 270
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcqa;->e:Lbfd;

    iget-object v1, p0, Lcqa;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->q(Lbfd;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 240
    new-instance v0, Lepb;

    iget-object v1, p0, Lcqa;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lepb;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcqa;->d:Landroid/content/Context;

    sget v2, Laen;->jh:I

    .line 241
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lepb;->a(Ljava/lang/String;)Lepb;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lepb;->b()Lepa;

    move-result-object v0

    .line 240
    invoke-direct {p0, v0}, Lcqa;->a(Lepa;)V

    .line 243
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 263
    new-instance v0, Lepb;

    iget-object v1, p0, Lcqa;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lepb;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcqa;->d:Landroid/content/Context;

    sget v2, Laen;->jj:I

    .line 264
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lepb;->a(Ljava/lang/String;)Lepb;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Lepb;->b()Lepa;

    move-result-object v0

    .line 263
    invoke-direct {p0, v0}, Lcqa;->a(Lepa;)V

    .line 266
    return-void
.end method

.method public e()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ldpp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    const-class v0, Ldpp;

    return-object v0
.end method

.method public f()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ldsl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    const-class v0, Ldsl;

    return-object v0
.end method
