.class final Lanl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lavy;


# instance fields
.field final a:Ljava/security/MessageDigest;

.field private final b:Lawa;


# direct methods
.method constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1016
    new-instance v0, Lawb;

    .line 1033
    invoke-direct {v0}, Lawb;-><init>()V

    .line 60
    iput-object v0, p0, Lanl;->b:Lawa;

    .line 63
    iput-object p1, p0, Lanl;->a:Ljava/security/MessageDigest;

    .line 64
    return-void
.end method


# virtual methods
.method public i_()Lawa;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lanl;->b:Lawa;

    return-object v0
.end method
