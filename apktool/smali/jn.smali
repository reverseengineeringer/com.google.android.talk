.class public final Ljn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 128
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 129
    new-instance v0, Ljq;

    invoke-direct {v0}, Ljq;-><init>()V

    sput-object v0, Ljn;->a:Ljo;

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    new-instance v0, Ljp;

    invoke-direct {v0}, Ljp;-><init>()V

    sput-object v0, Ljn;->a:Ljo;

    goto :goto_0
.end method
