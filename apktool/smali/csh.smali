.class public final Lcsh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lcsg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcrv;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcsh;->a:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public static a(Lilh;)V
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcsh;->b:Lcsg;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcsg;

    invoke-direct {v0}, Lcsg;-><init>()V

    sput-object v0, Lcsh;->b:Lcsg;

    .line 18
    :cond_0
    const-class v0, Lcrv;

    .line 1014
    new-instance v1, Lcse;

    invoke-direct {v1}, Lcse;-><init>()V

    .line 18
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 20
    return-void
.end method
