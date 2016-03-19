.class final Libq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Libp;


# direct methods
.method constructor <init>(Libp;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Libq;->a:Libp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Libq;->a:Libp;

    invoke-virtual {v0}, Libp;->e()V

    .line 236
    return-void
.end method
