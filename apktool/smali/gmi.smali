.class final Lgmi;
.super Lgml;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field final synthetic c:Lgmh;


# direct methods
.method public constructor <init>(Lgmh;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lgmi;->c:Lgmh;

    invoke-direct {p0, p1}, Lgml;-><init>(Lgmk;)V

    .line 41
    iput-object p2, p0, Lgmi;->f:Landroid/widget/ImageView;

    .line 42
    iput-object p3, p0, Lgmi;->g:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lgmi;->a:Ljava/lang/String;

    .line 44
    iput p5, p0, Lgmi;->b:I

    .line 45
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 49
    sget-object v0, Lglu;->g:Lglo;

    iget-object v1, p0, Lgmi;->c:Lgmh;

    iget-object v1, v1, Lgmh;->c:Lfic;

    iget-object v2, p0, Lgmi;->g:Ljava/lang/String;

    iget-object v3, p0, Lgmi;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lglo;->a(Lfic;Ljava/lang/String;Ljava/lang/String;)Lfij;

    move-result-object v0

    new-instance v1, Lgmj;

    invoke-direct {v1, p0}, Lgmj;-><init>(Lgmi;)V

    .line 50
    invoke-interface {v0, v1}, Lfij;->a(Lfin;)V

    .line 56
    return-void
.end method

.method public a(Lglp;)V
    .locals 7

    .prologue
    .line 60
    iget-object v0, p0, Lgmi;->c:Lgmh;

    invoke-interface {p1}, Lglp;->j()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    .line 61
    invoke-interface {p1}, Lglp;->a()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-interface {p1}, Lglp;->c()I

    move-result v3

    invoke-interface {p1}, Lglp;->d()I

    move-result v4

    iget v5, p0, Lgmi;->b:I

    move-object v6, p0

    .line 60
    invoke-virtual/range {v0 .. v6}, Lgmh;->a(Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;IIILgml;)V

    .line 63
    return-void
.end method
