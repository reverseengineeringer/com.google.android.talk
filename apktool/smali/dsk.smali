.class public final Ldsk;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final g:Ljava/lang/String;

.field private final h:J

.field private final i:J

.field private final j:J


# direct methods
.method public constructor <init>(Landroid/net/Uri;JJJ)V
    .locals 2

    .prologue
    .line 804
    invoke-direct {p0}, Ldqf;-><init>()V

    .line 805
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ldsk;->g:Ljava/lang/String;

    .line 806
    iput-wide p2, p0, Ldsk;->h:J

    .line 807
    iput-wide p4, p0, Ldsk;->i:J

    .line 808
    iput-wide p6, p0, Ldsk;->j:J

    .line 809
    return-void

    .line 805
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lbfz;Ldyy;)V
    .locals 14

    .prologue
    .line 814
    invoke-super/range {p0 .. p2}, Ldqf;->a(Lbfz;Ldyy;)V

    .line 815
    iget-object v0, p0, Ldsk;->b:Leff;

    move-object v13, v0

    check-cast v13, Leca;

    .line 816
    invoke-virtual {v13}, Leca;->e()Ljava/lang/String;

    move-result-object v1

    .line 817
    invoke-virtual {v13}, Leca;->b()Ljava/lang/String;

    move-result-object v2

    .line 818
    iget-object v0, p0, Ldsk;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 822
    iget-object v0, p0, Ldsk;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_0
    iget-wide v4, p0, Ldsk;->h:J

    iget-wide v6, p0, Ldsk;->i:J

    iget-object v0, p0, Ldsk;->b:Leff;

    check-cast v0, Leca;

    .line 825
    invoke-virtual {v0}, Leca;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v8, 0x1

    :goto_1
    iget-object v0, p0, Ldsk;->b:Leff;

    check-cast v0, Leca;

    .line 826
    invoke-virtual {v0}, Leca;->o()J

    move-result-wide v9

    iget-wide v11, p0, Ldsk;->j:J

    move-object v0, p1

    .line 818
    invoke-static/range {v0 .. v12}, Lbft;->a(Lbfz;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJZJJ)V

    .line 1036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 828
    invoke-virtual {p1}, Lbfz;->g()Lbfd;

    move-result-object v1

    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    const-string v2, "sent_mms_count_since_last_upload"

    invoke-static {v0, v1, v2}, Lbff;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 832
    invoke-virtual {v13}, Leca;->f()[Ljava/lang/String;

    move-result-object v1

    .line 833
    array-length v0, v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 834
    const-class v2, Lbcm;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbcm;

    .line 835
    invoke-virtual {p1}, Lbfz;->g()Lbfd;

    move-result-object v2

    invoke-virtual {v2}, Lbfd;->g()I

    move-result v2

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-static {v2, v1}, Lcto;->a(ILjava/lang/String;)Lcto;

    move-result-object v1

    invoke-interface {v0, v1}, Lbcm;->a(Lbcn;)Lbcg;

    .line 838
    :cond_0
    return-void

    .line 822
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 825
    :cond_2
    const/4 v8, 0x0

    goto :goto_1
.end method
