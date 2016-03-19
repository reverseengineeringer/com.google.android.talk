.class final Lfxv;
.super Ljava/lang/Object;

# interfaces
.implements Lfxw;


# instance fields
.field final synthetic a:Lfxs;


# direct methods
.method constructor <init>(Lfxs;)V
    .locals 0

    iput-object p1, p0, Lfxv;->a:Lfxs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lfxv;->a:Lfxs;

    .line 1000
    iget-object v0, v0, Lfxs;->a:Lfxr;

    .line 0
    invoke-virtual {v0}, Lfxr;->a()V

    return-void
.end method
