.class public final Lgdc;
.super Lgde;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic i:I

.field final synthetic j:I

.field final synthetic k:Lglo;


# direct methods
.method public constructor <init>(Lglo;Lfic;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 0
    iput-object p1, p0, Lgdc;->k:Lglo;

    iput-object p3, p0, Lgdc;->a:Ljava/lang/String;

    iput-object p4, p0, Lgdc;->b:Ljava/lang/String;

    iput p5, p0, Lgdc;->i:I

    const/4 v0, 0x1

    iput v0, p0, Lgdc;->j:I

    .line 1000
    invoke-direct {p0, p2}, Lgde;-><init>(Lfic;)V

    .line 0
    return-void
.end method


# virtual methods
.method protected synthetic a(Lfia;)V
    .locals 6

    .prologue
    move-object v0, p1

    .line 0
    check-cast v0, Lgot;

    .line 2000
    iget-object v2, p0, Lgdc;->a:Ljava/lang/String;

    iget-object v3, p0, Lgdc;->b:Ljava/lang/String;

    iget v4, p0, Lgdc;->i:I

    iget v5, p0, Lgdc;->j:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lgot;->a(Lfis;Ljava/lang/String;Ljava/lang/String;II)Lflu;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgdc;->a(Lflu;)V

    .line 0
    return-void
.end method
