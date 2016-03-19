.class final Layr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhpw;


# instance fields
.field final synthetic a:Layq;


# direct methods
.method constructor <init>(Layq;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Layr;->a:Layq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLhpv;Lhpv;II)V
    .locals 1

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p0, Layr;->a:Layq;

    .line 1035
    invoke-virtual {v0}, Layq;->c()V

    .line 66
    :cond_0
    return-void
.end method
