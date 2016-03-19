.class final Lbab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lioq;
.implements Lioz;


# instance fields
.field final a:Landroid/widget/TextView;

.field final b:Lba;

.field final c:Lazr;

.field final synthetic d:Lbaa;

.field private final e:I


# direct methods
.method constructor <init>(Lbaa;Liog;Lba;Landroid/widget/TextView;)V
    .locals 4

    .prologue
    .line 42
    iput-object p1, p0, Lbab;->d:Lbaa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p2, p0}, Liog;->a(Lioz;)Lioz;

    .line 44
    iput-object p3, p0, Lbab;->b:Lba;

    .line 45
    iput-object p4, p0, Lbab;->a:Landroid/widget/TextView;

    .line 46
    const-class v0, Lhpu;

    invoke-static {p3, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    iput v0, p0, Lbab;->e:I

    .line 47
    new-instance v0, Lbac;

    invoke-direct {v0, p0, p1}, Lbac;-><init>(Lbab;Lbaa;)V

    iput-object v0, p0, Lbab;->c:Lazr;

    .line 58
    iget-object v0, p0, Lbab;->b:Lba;

    invoke-virtual {v0}, Lba;->f()Lcj;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lbae;

    .line 1083
    invoke-direct {v3, p0}, Lbae;-><init>(Lbab;)V

    .line 59
    invoke-virtual {v0, v1, v2, v3}, Lcj;->b(ILandroid/os/Bundle;Lck;)Lfe;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lfe;->u()V

    .line 62
    return-void
.end method


# virtual methods
.method public h_()V
    .locals 2

    .prologue
    .line 103
    iget v0, p0, Lbab;->e:I

    iget-object v1, p0, Lbab;->c:Lazr;

    invoke-static {v0, v1}, Lazq;->a(ILazr;)V

    .line 105
    return-void
.end method
