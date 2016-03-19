.class public final Lgdh;
.super Lgly;


# instance fields
.field final synthetic a:Lfic;

.field final synthetic b:Lglt;

.field final synthetic i:Lgls;


# direct methods
.method public constructor <init>(Lgls;Lfic;Lfic;Lglt;)V
    .locals 0

    iput-object p1, p0, Lgdh;->i:Lgls;

    iput-object p3, p0, Lgdh;->a:Lfic;

    iput-object p4, p0, Lgdh;->b:Lglt;

    invoke-direct {p0, p2}, Lgly;-><init>(Lfic;)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Lfia;)V
    .locals 1

    .prologue
    .line 0
    check-cast p1, Lgot;

    .line 1000
    iget-object v0, p0, Lgdh;->b:Lglt;

    invoke-virtual {p1, v0}, Lgot;->a(Lglt;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lgdh;->a(Lfim;)V

    .line 0
    return-void
.end method
