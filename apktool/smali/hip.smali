.class public final Lhip;
.super Lhil;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;)V
    .locals 7

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p6

    move v6, p7

    .line 18
    invoke-direct/range {v0 .. v6}, Lhil;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 19
    iput-object p5, p0, Lhip;->a:Ljava/lang/String;

    .line 20
    iput-object p8, p0, Lhip;->b:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lhip;->a:Ljava/lang/String;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lhip;->b:Ljava/lang/String;

    return-object v0
.end method
