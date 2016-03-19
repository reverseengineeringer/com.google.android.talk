.class public final Lgfk;
.super Lghw;


# instance fields
.field final synthetic a:Lgfm;

.field final synthetic b:Lfxr;


# direct methods
.method public constructor <init>(Lfxr;Lgfm;)V
    .locals 0

    iput-object p1, p0, Lgfk;->b:Lfxr;

    iput-object p2, p0, Lgfk;->a:Lgfm;

    invoke-direct {p0}, Lghw;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lgfq;)V
    .locals 2

    iget-object v0, p0, Lgfk;->a:Lgfm;

    new-instance v1, Lgfh;

    invoke-direct {v1, p1}, Lgfh;-><init>(Lgfq;)V

    invoke-virtual {v0, v1}, Lgfm;->a(Lgfh;)V

    return-void
.end method
