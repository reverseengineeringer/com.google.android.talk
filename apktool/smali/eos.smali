.class final Leos;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leor;


# direct methods
.method constructor <init>(Leor;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Leos;->a:Leor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Leos;->a:Leor;

    .line 1031
    invoke-virtual {v0}, Leor;->b()V

    .line 63
    return-void
.end method
