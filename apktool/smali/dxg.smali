.class public final Ldxg;
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
    iput-object p2, p0, Ldxg;->a:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public p_()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ldnk;

    iget-object v1, p0, Ldxg;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ldnk;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ldxg;->a(Leff;)V

    .line 29
    return-void
.end method
