.class final Lcqq;
.super Ldlj;
.source "SourceFile"

# interfaces
.implements Lezb;


# instance fields
.field final synthetic a:Lcqp;


# direct methods
.method public constructor <init>(Lcqp;Landroid/content/Context;Liog;I)V
    .locals 1

    .prologue
    .line 104
    iput-object p1, p0, Lcqq;->a:Lcqp;

    .line 1022
    sget v0, Lcqp;->a:I

    .line 105
    invoke-direct {p0, p2, p3, p4, v0}, Ldlj;-><init>(Landroid/content/Context;Liog;II)V

    .line 106
    return-void
.end method


# virtual methods
.method public a(Ldns;)V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lcqq;->a:Lcqp;

    invoke-virtual {p1}, Ldns;->d()J

    move-result-wide v2

    .line 6068
    iput-wide v2, v0, Lcqp;->c:J

    .line 6069
    invoke-virtual {v0}, Lcqp;->b()V

    .line 127
    return-void
.end method

.method protected a(Z)V
    .locals 1

    .prologue
    .line 117
    if-eqz p1, :cond_0

    .line 4022
    sget-object v0, Lcqp;->b:Leyz;

    .line 118
    invoke-virtual {v0, p0}, Leyz;->a(Lezb;)V

    .line 122
    :goto_0
    return-void

    .line 5022
    :cond_0
    sget-object v0, Lcqp;->b:Leyz;

    .line 120
    invoke-virtual {v0, p0}, Leyz;->b(Lezb;)V

    goto :goto_0
.end method

.method protected c()V
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Lcqq;->a:Lcqp;

    .line 2068
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcqp;->c:J

    .line 2069
    invoke-virtual {v0}, Lcqp;->b()V

    .line 112
    iget-object v0, p0, Lcqq;->a:Lcqp;

    .line 3022
    invoke-virtual {v0}, Lcqp;->a()V

    .line 113
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcqq;->a:Lcqp;

    .line 7022
    invoke-virtual {v0}, Lcqp;->b()V

    .line 132
    return-void
.end method
