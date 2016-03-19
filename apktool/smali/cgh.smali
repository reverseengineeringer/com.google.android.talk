.class public final Lcgh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lcgf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcnz;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcgh;->a:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public static a(Lilh;)V
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcgh;->b:Lcgf;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcgf;

    invoke-direct {v0}, Lcgf;-><init>()V

    sput-object v0, Lcgh;->b:Lcgf;

    .line 18
    :cond_0
    const-class v0, Lcnz;

    sget-object v1, Lcgh;->b:Lcgf;

    .line 19
    invoke-virtual {v1}, Lcgf;->a()[Lcnz;

    move-result-object v1

    .line 18
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 20
    return-void
.end method
