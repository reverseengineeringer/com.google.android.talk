.class public final Lefe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lefd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Leez;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lefe;->a:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lefe;->b:Lefd;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lefd;

    invoke-direct {v0}, Lefd;-><init>()V

    sput-object v0, Lefe;->b:Lefd;

    .line 18
    :cond_0
    const-class v0, Leez;

    .line 1015
    new-instance v1, Leez;

    invoke-direct {v1, p0}, Leez;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 20
    return-void
.end method
