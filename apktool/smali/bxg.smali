.class final Lbxg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhpw;


# instance fields
.field final synthetic a:Lbwy;


# direct methods
.method constructor <init>(Lbwy;)V
    .locals 0

    .prologue
    .line 841
    iput-object p1, p0, Lbxg;->a:Lbwy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLhpv;Lhpv;II)V
    .locals 1

    .prologue
    .line 846
    if-eqz p1, :cond_0

    sget-object v0, Lhpv;->c:Lhpv;

    if-ne p3, v0, :cond_0

    .line 847
    iget-object v0, p0, Lbxg;->a:Lbwy;

    .line 1077
    invoke-virtual {v0}, Lbwy;->h()V

    .line 849
    :cond_0
    return-void
.end method
