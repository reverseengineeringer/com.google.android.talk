.class final Lfiu;
.super Lfjo;


# instance fields
.field final synthetic a:Lfit;


# direct methods
.method constructor <init>(Lfit;Lfjs;)V
    .locals 0

    iput-object p1, p0, Lfiu;->a:Lfit;

    invoke-direct {p0, p2}, Lfjo;-><init>(Lfjs;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lfiu;->a:Lfit;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfit;->a(I)V

    return-void
.end method
