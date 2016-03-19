.class final Lcmf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lclm;


# instance fields
.field final synthetic a:Lcme;


# direct methods
.method constructor <init>(Lcme;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcmf;->a:Lcme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public a(Lkhk;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcmf;->a:Lcme;

    .line 1029
    invoke-virtual {v0}, Lcme;->c()V

    .line 57
    iget-object v0, p0, Lcmf;->a:Lcme;

    .line 2029
    invoke-virtual {v0, p1}, Lcme;->a(Lkhk;)V

    .line 58
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcmf;->a:Lcme;

    .line 5029
    invoke-virtual {v0}, Lcme;->c()V

    .line 76
    iget-object v0, p0, Lcmf;->a:Lcme;

    .line 6126
    new-instance v1, Lcls;

    invoke-direct {v1}, Lcls;-><init>()V

    iput-object v1, v0, Lcme;->e:Lcls;

    .line 6127
    iget-object v1, v0, Lcme;->e:Lcls;

    new-instance v2, Lcmg;

    invoke-direct {v2, v0}, Lcmg;-><init>(Lcme;)V

    invoke-virtual {v1, v2}, Lcls;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 6136
    iget-object v1, v0, Lcme;->e:Lcls;

    iget-object v0, v0, Lcme;->a:Lba;

    invoke-virtual {v0}, Lba;->C_()Lbg;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcls;->a(Lbg;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public b(Lkhk;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 62
    iget-object v1, p0, Lcmf;->a:Lcme;

    .line 3147
    iget-object v0, v1, Lcme;->a:Lba;

    invoke-virtual {v0}, Lba;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3148
    iget-object v2, p1, Lkhk;->d:Ljava/lang/String;

    .line 3149
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3150
    sget v2, Laen;->iw:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3152
    :goto_0
    iget-object v1, v1, Lcme;->b:Lcmu;

    new-instance v2, Lcmt;

    invoke-direct {v2}, Lcmt;-><init>()V

    .line 3154
    invoke-virtual {v2, v6}, Lcmt;->a(I)Lcmt;

    move-result-object v2

    .line 3155
    invoke-virtual {v2, v0}, Lcmt;->a(Ljava/lang/String;)Lcmt;

    move-result-object v0

    .line 3156
    invoke-virtual {v0}, Lcmt;->a()Lcmt;

    move-result-object v0

    .line 3157
    invoke-virtual {v0}, Lcmt;->b()Lcms;

    move-result-object v0

    .line 3152
    invoke-interface {v1, v0}, Lcmu;->a(Lcms;)V

    .line 63
    return-void

    .line 3151
    :cond_0
    sget v2, Laen;->iv:I

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lkhk;->d:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c(Lkhk;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 67
    iget-object v1, p0, Lcmf;->a:Lcme;

    .line 4161
    iget-object v0, v1, Lcme;->a:Lba;

    invoke-virtual {v0}, Lba;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4162
    iget-object v2, p1, Lkhk;->d:Ljava/lang/String;

    .line 4163
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4164
    sget v2, Laen;->iB:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4166
    :goto_0
    iget-object v1, v1, Lcme;->b:Lcmu;

    new-instance v2, Lcmt;

    invoke-direct {v2}, Lcmt;-><init>()V

    .line 4168
    invoke-virtual {v2, v6}, Lcmt;->a(I)Lcmt;

    move-result-object v2

    .line 4169
    invoke-virtual {v2, v0}, Lcmt;->a(Ljava/lang/String;)Lcmt;

    move-result-object v0

    .line 4170
    invoke-virtual {v0}, Lcmt;->a()Lcmt;

    move-result-object v0

    .line 4171
    invoke-virtual {v0}, Lcmt;->b()Lcms;

    move-result-object v0

    .line 4166
    invoke-interface {v1, v0}, Lcmu;->a(Lcms;)V

    .line 68
    return-void

    .line 4165
    :cond_0
    sget v2, Laen;->iA:I

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lkhk;->d:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
