.class public final Ldsm;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final g:Ljava/lang/String;

.field private final h:J


# direct methods
.method public constructor <init>(Landroid/net/Uri;J)V
    .locals 2

    .prologue
    .line 748
    invoke-direct {p0}, Ldqf;-><init>()V

    .line 749
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ldsm;->g:Ljava/lang/String;

    .line 750
    iput-wide p2, p0, Ldsm;->h:J

    .line 751
    return-void

    .line 749
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lbfz;Ldyy;)V
    .locals 14

    .prologue
    .line 756
    invoke-super/range {p0 .. p2}, Ldqf;->a(Lbfz;Ldyy;)V

    .line 758
    iget-object v0, p0, Ldsm;->b:Leff;

    move-object v13, v0

    check-cast v13, Lece;

    .line 759
    invoke-virtual {v13}, Lece;->e()Ljava/lang/String;

    move-result-object v1

    .line 760
    invoke-virtual {v13}, Lece;->b()Ljava/lang/String;

    move-result-object v2

    .line 761
    iget-object v0, p0, Ldsm;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 764
    iget-object v0, p0, Ldsm;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_0
    const-wide/16 v4, 0x0

    iget-wide v6, p0, Ldsm;->h:J

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    .line 769
    invoke-virtual {v13}, Lece;->h()J

    move-result-wide v11

    move-object v0, p1

    .line 761
    invoke-static/range {v0 .. v12}, Lbft;->a(Lbfz;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJZJJ)V

    .line 1036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 770
    invoke-virtual {p1}, Lbfz;->g()Lbfd;

    move-result-object v1

    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    const-string v2, "sent_sms_count_since_last_upload"

    invoke-static {v0, v1, v2}, Lbff;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 773
    invoke-virtual {v13}, Lece;->f()Ljava/lang/String;

    move-result-object v1

    .line 774
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 775
    const-class v2, Lbcm;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbcm;

    .line 777
    invoke-virtual {p1}, Lbfz;->g()Lbfd;

    move-result-object v2

    invoke-virtual {v2}, Lbfd;->g()I

    move-result v2

    invoke-static {v2, v1}, Lcto;->a(ILjava/lang/String;)Lcto;

    move-result-object v1

    .line 776
    invoke-interface {v0, v1}, Lbcm;->a(Lbcn;)Lbcg;

    .line 779
    :cond_0
    return-void

    .line 764
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
