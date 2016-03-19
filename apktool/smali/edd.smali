.class public final Ledd;
.super Ldyx;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbfd;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Ldyx;-><init>(Lbfd;)V

    .line 20
    iput-object p2, p0, Ledd;->a:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public p_()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ldqa;

    iget-object v1, p0, Ledd;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ldqa;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, v0}, Ledd;->a(Leff;)V

    .line 31
    return-void
.end method
