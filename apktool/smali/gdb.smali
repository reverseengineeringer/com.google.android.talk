.class public final Lgdb;
.super Lgde;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lglo;


# direct methods
.method public constructor <init>(Lglo;Lfic;J)V
    .locals 1

    .prologue
    .line 0
    iput-object p1, p0, Lgdb;->b:Lglo;

    iput-wide p3, p0, Lgdb;->a:J

    .line 1000
    invoke-direct {p0, p2}, Lgde;-><init>(Lfic;)V

    .line 0
    return-void
.end method


# virtual methods
.method protected synthetic a(Lfia;)V
    .locals 2

    .prologue
    .line 0
    check-cast p1, Lgot;

    .line 2000
    iget-wide v0, p0, Lgdb;->a:J

    invoke-virtual {p1, p0, v0, v1}, Lgot;->a(Lfis;J)Lflu;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgdb;->a(Lflu;)V

    .line 0
    return-void
.end method
