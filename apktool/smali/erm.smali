.class public final Lerm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lebb;


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lebb;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lerm;->a:Ljava/util/List;

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lerm;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Lebb;)V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Laal;->w()V

    .line 24
    iget-object v0, p0, Lerm;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    return-void
.end method

.method public a(Lhqe;Ldrz;)V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lerm;->b:Landroid/os/Handler;

    new-instance v1, Lern;

    invoke-direct {v1, p0, p1, p2}, Lern;-><init>(Lerm;Lhqe;Ldrz;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    return-void
.end method

.method public b(Lebb;)V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Laal;->w()V

    .line 29
    iget-object v0, p0, Lerm;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method
