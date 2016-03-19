.class public final Lgdd;
.super Lgde;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic i:Lglo;


# direct methods
.method public constructor <init>(Lglo;Lfic;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 0
    iput-object p1, p0, Lgdd;->i:Lglo;

    iput-object p3, p0, Lgdd;->a:Ljava/lang/String;

    iput-object p4, p0, Lgdd;->b:Ljava/lang/String;

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
    iget-object v0, p0, Lgdd;->a:Ljava/lang/String;

    iget-object v1, p0, Lgdd;->b:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Lgot;->a(Lfis;Ljava/lang/String;Ljava/lang/String;)Lflu;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgdd;->a(Lflu;)V

    .line 0
    return-void
.end method
