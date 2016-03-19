.class final Lfhj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lfic;

.field final synthetic b:Lfir;

.field final synthetic c:Lfhe;


# direct methods
.method constructor <init>(Lfhe;Lfic;Lfir;)V
    .locals 0

    iput-object p1, p0, Lfhj;->c:Lfhe;

    iput-object p2, p0, Lfhj;->a:Lfic;

    iput-object p3, p0, Lfhj;->b:Lfir;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lfhj;->a:Lfic;

    iget-object v1, p0, Lfhj;->b:Lfir;

    invoke-interface {v0, v1}, Lfic;->a(Lfir;)Lfir;

    return-void
.end method
