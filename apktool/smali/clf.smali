.class public final Lclf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lcld;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lclb;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lclf;->a:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static a(Lilh;)V
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lclf;->b:Lcld;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcld;

    invoke-direct {v0}, Lcld;-><init>()V

    sput-object v0, Lclf;->b:Lcld;

    .line 19
    :cond_0
    const-class v0, Lclb;

    sget-object v1, Lclf;->b:Lcld;

    .line 20
    invoke-virtual {v1}, Lcld;->a()Lclb;

    move-result-object v1

    .line 19
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 21
    return-void
.end method
