.class final Lgmf;
.super Lgml;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Lgpt;

.field final synthetic d:Lgme;


# direct methods
.method public constructor <init>(Lgme;Landroid/widget/ImageView;Lgpt;I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 41
    iput-object p1, p0, Lgmf;->d:Lgme;

    invoke-direct {p0, p1}, Lgml;-><init>(Lgmk;)V

    .line 42
    invoke-static {p3}, Laal;->a(Lgpt;)Z

    move-result v2

    .line 43
    iput-object p2, p0, Lgmf;->f:Landroid/widget/ImageView;

    .line 44
    iput-object p3, p0, Lgmf;->c:Lgpt;

    .line 45
    if-eqz v2, :cond_1

    invoke-interface {p3}, Lgpt;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lgmf;->g:Ljava/lang/String;

    .line 46
    if-eqz v2, :cond_0

    invoke-interface {p3}, Lgpt;->Q_()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lgmf;->b:Ljava/lang/String;

    .line 47
    iput p4, p0, Lgmf;->a:I

    .line 52
    return-void

    :cond_1
    move-object v0, v1

    .line 45
    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 56
    sget-object v0, Lglu;->g:Lglo;

    iget-object v1, p0, Lgmf;->d:Lgme;

    iget-object v1, v1, Lgme;->c:Lfic;

    iget-object v2, p0, Lgmf;->g:Ljava/lang/String;

    iget-object v3, p0, Lgmf;->b:Ljava/lang/String;

    iget v4, p0, Lgmf;->a:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lglo;->a(Lfic;Ljava/lang/String;Ljava/lang/String;I)Lfij;

    move-result-object v0

    new-instance v1, Lgmg;

    invoke-direct {v1, p0}, Lgmg;-><init>(Lgmf;)V

    .line 57
    invoke-interface {v0, v1}, Lfij;->a(Lfin;)V

    .line 65
    return-void
.end method

.method public a(Lglp;)V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lgmf;->d:Lgme;

    invoke-interface {p1}, Lglp;->j()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    .line 70
    invoke-interface {p1}, Lglp;->a()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 69
    invoke-static {v0, v1, v2, p0}, Lgme;->a(Lgme;Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;Lgml;)V

    .line 71
    return-void
.end method
