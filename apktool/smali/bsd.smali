.class public final Lbsd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lbsb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lbsa;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbsd;->a:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static a(Lilh;)V
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lbsd;->b:Lbsb;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lbsb;

    invoke-direct {v0}, Lbsb;-><init>()V

    sput-object v0, Lbsd;->b:Lbsb;

    .line 19
    :cond_0
    const-class v0, Lbsa;

    sget-object v1, Lbsd;->b:Lbsb;

    .line 20
    invoke-virtual {v1}, Lbsb;->a()Lbsa;

    move-result-object v1

    .line 19
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 21
    return-void
.end method
