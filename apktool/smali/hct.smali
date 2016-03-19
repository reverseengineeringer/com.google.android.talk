.class final Lhct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhcy;


# instance fields
.field final synthetic a:Lhcs;


# direct methods
.method constructor <init>(Lhcs;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lhct;->a:Lhcs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lhct;->a:Lhcs;

    .line 1031
    iget-object v0, v0, Lhcs;->c:Lhkt;

    .line 369
    invoke-virtual {v0}, Lhkt;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lhct;->a:Lhcs;

    .line 2031
    iget-object v0, v0, Lhcs;->a:Ljava/lang/String;

    .line 372
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lhct;->a:Lhcs;

    .line 3031
    iget-object v0, v0, Lhcs;->d:Ljava/lang/String;

    .line 375
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lhct;->a:Lhcs;

    .line 4031
    iget-object v0, v0, Lhcs;->b:Ljava/lang/String;

    .line 379
    return-object v0
.end method
