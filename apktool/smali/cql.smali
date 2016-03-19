.class final Lcql;
.super Ldlj;
.source "SourceFile"

# interfaces
.implements Lezb;


# instance fields
.field final synthetic a:Lcqk;


# direct methods
.method public constructor <init>(Lcqk;Landroid/content/Context;Liog;I)V
    .locals 1

    .prologue
    .line 80
    iput-object p1, p0, Lcql;->a:Lcqk;

    .line 81
    sget-object v0, Ldnv;->f:Ldnv;

    iget v0, v0, Ldnv;->l:I

    invoke-direct {p0, p2, p3, p4, v0}, Ldlj;-><init>(Landroid/content/Context;Liog;II)V

    .line 82
    return-void
.end method


# virtual methods
.method public a(Ldns;)V
    .locals 6

    .prologue
    .line 100
    iget-object v0, p0, Lcql;->a:Lcqk;

    invoke-virtual {p1}, Ldns;->d()J

    move-result-wide v2

    .line 4052
    iget-wide v4, v0, Lcqk;->b:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 4053
    iput-wide v2, v0, Lcqk;->b:J

    .line 4054
    invoke-virtual {v0}, Lcqk;->a()V

    .line 101
    :cond_0
    return-void
.end method

.method protected a(Z)V
    .locals 1

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 2021
    sget-object v0, Lcqk;->a:Leyz;

    .line 92
    invoke-virtual {v0, p0}, Leyz;->a(Lezb;)V

    .line 96
    :goto_0
    return-void

    .line 3021
    :cond_0
    sget-object v0, Lcqk;->a:Leyz;

    .line 94
    invoke-virtual {v0, p0}, Leyz;->b(Lezb;)V

    goto :goto_0
.end method

.method protected c()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 86
    iget-object v0, p0, Lcql;->a:Lcqk;

    .line 1052
    iget-wide v2, v0, Lcqk;->b:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 1053
    iput-wide v4, v0, Lcqk;->b:J

    .line 1054
    invoke-virtual {v0}, Lcqk;->a()V

    .line 87
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcql;->a:Lcqk;

    .line 5021
    invoke-virtual {v0}, Lcqk;->a()V

    .line 106
    return-void
.end method
