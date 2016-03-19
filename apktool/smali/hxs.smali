.class final Lhxs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhxq;


# direct methods
.method constructor <init>(Lhxq;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lhxs;->a:Lhxq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1018
    sget-object v0, Lhxr;->a:Ljava/util/Set;

    .line 50
    iget-object v1, p0, Lhxs;->a:Lhxq;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method
