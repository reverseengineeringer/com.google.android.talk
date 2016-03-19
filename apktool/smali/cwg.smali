.class final Lcwg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcwf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcwe;

.field final synthetic b:Lcwl;

.field final synthetic c:Lcwf;


# direct methods
.method constructor <init>(Lcwf;Lcwe;Lcwl;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcwg;->c:Lcwf;

    iput-object p2, p0, Lcwg;->a:Lcwe;

    iput-object p3, p0, Lcwg;->b:Lcwl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1165
    iget-object v0, p0, Lcwg;->c:Lcwf;

    iget-object v1, p0, Lcwg;->a:Lcwe;

    iget-object v2, p0, Lcwg;->b:Lcwl;

    invoke-virtual {v0, v1, v2}, Lcwf;->c(Lcwe;Lcwl;)Lcwf;

    move-result-object v0

    .line 162
    return-object v0
.end method
