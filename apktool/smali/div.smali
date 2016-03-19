.class final Ldiv;
.super Leap;
.source "SourceFile"


# instance fields
.field final synthetic a:Ldiu;


# direct methods
.method constructor <init>(Ldiu;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Ldiv;->a:Ldiu;

    invoke-direct {p0}, Leap;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Leap;->a()V

    .line 72
    iget-object v0, p0, Ldiv;->a:Ldiu;

    invoke-virtual {v0}, Ldiu;->c()V

    .line 73
    return-void
.end method

.method public a(Lbfd;J)V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0, p1, p2, p3}, Leap;->a(Lbfd;J)V

    .line 66
    iget-object v0, p0, Ldiv;->a:Ldiu;

    invoke-virtual {v0}, Ldiu;->c()V

    .line 67
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Leap;->b()V

    .line 78
    iget-object v0, p0, Ldiv;->a:Ldiu;

    invoke-virtual {v0}, Ldiu;->c()V

    .line 79
    return-void
.end method
