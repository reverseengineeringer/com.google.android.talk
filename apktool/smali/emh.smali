.class public final Lemh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lemg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lemf;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lemh;->a:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public static a(Lilh;)V
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lemh;->b:Lemg;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lemg;

    invoke-direct {v0}, Lemg;-><init>()V

    sput-object v0, Lemh;->b:Lemg;

    .line 18
    :cond_0
    const-class v0, Lemf;

    .line 1015
    new-instance v1, Lemi;

    invoke-direct {v1}, Lemi;-><init>()V

    .line 18
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 20
    return-void
.end method
