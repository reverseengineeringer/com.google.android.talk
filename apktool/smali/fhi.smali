.class final Lfhi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lfir;

.field final synthetic b:Lfhh;


# direct methods
.method constructor <init>(Lfhh;Lfir;)V
    .locals 0

    iput-object p1, p0, Lfhi;->b:Lfhh;

    iput-object p2, p0, Lfhi;->a:Lfir;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lfhi;->b:Lfhh;

    iget-object v0, v0, Lfhh;->b:Lfhe;

    iget-object v1, p0, Lfhi;->b:Lfhh;

    iget-object v1, v1, Lfhh;->a:Lfic;

    iget-object v2, p0, Lfhi;->a:Lfir;

    invoke-static {v0, v1, v2}, Lfhe;->a(Lfhe;Lfic;Lfir;)Lfij;

    return-void
.end method
