.class public final Lgdi;
.super Lgly;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic i:J

.field final synthetic j:Z

.field final synthetic k:Z

.field final synthetic l:Lglz;


# direct methods
.method public constructor <init>(Lglz;Lfic;Ljava/lang/String;Ljava/lang/String;JZZ)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lgdi;->l:Lglz;

    iput-object p3, p0, Lgdi;->a:Ljava/lang/String;

    iput-object p4, p0, Lgdi;->b:Ljava/lang/String;

    iput-wide p5, p0, Lgdi;->i:J

    iput-boolean v0, p0, Lgdi;->j:Z

    iput-boolean v0, p0, Lgdi;->k:Z

    invoke-direct {p0, p2}, Lgly;-><init>(Lfic;)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Lfia;)V
    .locals 8

    .prologue
    move-object v1, p1

    .line 0
    check-cast v1, Lgot;

    .line 1000
    iget-object v2, p0, Lgdi;->a:Ljava/lang/String;

    iget-object v3, p0, Lgdi;->b:Ljava/lang/String;

    iget-wide v4, p0, Lgdi;->i:J

    iget-boolean v6, p0, Lgdi;->j:Z

    iget-boolean v7, p0, Lgdi;->k:Z

    invoke-virtual/range {v1 .. v7}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;JZZ)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lgdi;->a(Lfim;)V

    .line 0
    return-void
.end method
