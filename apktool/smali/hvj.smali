.class public final Lhvj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lbmp;


# direct methods
.method public constructor <init>(Lbmp;)V
    .locals 0

    .prologue
    .line 2115
    iput-object p1, p0, Lhvj;->a:Lbmp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1118
    iget-object v0, p0, Lhvj;->a:Lbmp;

    .line 2061
    iget v0, v0, Lbmp;->b:I

    .line 1118
    if-ne v0, v1, :cond_0

    .line 1119
    const/4 v0, 0x0

    .line 1124
    :goto_0
    return v0

    .line 1122
    :cond_0
    iget-object v0, p0, Lhvj;->a:Lbmp;

    invoke-virtual {v0, v1}, Lbmp;->b(I)V

    .line 1124
    const/4 v0, 0x1

    goto :goto_0
.end method
