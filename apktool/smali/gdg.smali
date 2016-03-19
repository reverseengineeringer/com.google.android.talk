.class public final Lgdg;
.super Lgly;


# instance fields
.field final synthetic a:Lfic;

.field final synthetic b:Lglt;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:I

.field final synthetic l:Lgls;


# direct methods
.method public constructor <init>(Lgls;Lfic;Lfic;Lglt;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lgdg;->l:Lgls;

    iput-object p3, p0, Lgdg;->a:Lfic;

    iput-object p4, p0, Lgdg;->b:Lglt;

    iput-object p5, p0, Lgdg;->i:Ljava/lang/String;

    iput-object p6, p0, Lgdg;->j:Ljava/lang/String;

    iput p7, p0, Lgdg;->k:I

    invoke-direct {p0, p2}, Lgly;-><init>(Lfic;)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Lfia;)V
    .locals 6

    .prologue
    move-object v0, p1

    .line 0
    check-cast v0, Lgot;

    .line 1000
    iget-object v1, p0, Lgdg;->a:Lfic;

    iget-object v2, p0, Lgdg;->b:Lglt;

    iget-object v3, p0, Lgdg;->i:Ljava/lang/String;

    iget-object v4, p0, Lgdg;->j:Ljava/lang/String;

    iget v5, p0, Lgdg;->k:I

    invoke-virtual/range {v0 .. v5}, Lgot;->a(Lfic;Lglt;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lgdg;->a(Lfim;)V

    .line 0
    return-void
.end method
