.class public final Ldxp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldxr;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ldvv;Lbfd;Lba;Ldvx;)Ljava/lang/Runnable;
    .locals 6

    .prologue
    .line 70
    new-instance v0, Ldxq;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Ldxq;-><init>(Ldxp;Lbfd;Ldvx;Ldvv;Lba;)V

    return-object v0
.end method
