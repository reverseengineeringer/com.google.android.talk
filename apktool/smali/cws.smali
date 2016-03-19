.class final Lcws;
.super Lcyk;
.source "SourceFile"


# instance fields
.field private final y:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;ILcwx;I)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v4

    .line 26
    invoke-direct/range {v0 .. v5}, Lcyk;-><init>(Landroid/content/Context;ILcwx;ZZ)V

    .line 31
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%02d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcws;->y:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method protected c()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method protected h()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcws;->u:Lcy;

    iget v1, p0, Lcws;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcy;->b(Ljava/lang/String;)Lcy;

    move-result-object v0

    iget-object v1, p0, Lcws;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcy;->c(Ljava/lang/String;)Lcy;

    .line 37
    invoke-super {p0}, Lcyk;->h()V

    .line 38
    return-void
.end method

.method protected i()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcws;->p:Landroid/content/Context;

    invoke-static {v0}, Lcww;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget v0, p0, Lcws;->q:I

    .line 54
    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    const/16 v1, 0x789

    .line 53
    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 57
    :cond_0
    return-void
.end method
