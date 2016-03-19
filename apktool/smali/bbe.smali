.class final Lbbe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldje;


# instance fields
.field a:Ldvv;

.field b:Lba;

.field c:I

.field d:Ljava/lang/String;

.field e:Lbba;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lba;Ldvv;ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 35
    new-instance v0, Lbba;

    invoke-direct {v0, p1, p3}, Lbba;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lbbe;->e:Lbba;

    .line 36
    iput-object p1, p0, Lbbe;->b:Lba;

    .line 37
    iput-object p2, p0, Lbbe;->a:Ldvv;

    .line 38
    iput p3, p0, Lbbe;->c:I

    .line 39
    iput-object p4, p0, Lbbe;->d:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lbbe;->b:Lba;

    invoke-virtual {v0}, Lba;->f()Lcj;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lbbf;

    invoke-direct {v3, p0}, Lbbf;-><init>(Lbbe;)V

    invoke-virtual {v0, v1, v2, v3}, Lcj;->b(ILandroid/os/Bundle;Lck;)Lfe;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lfe;->u()V

    .line 44
    return-void
.end method
