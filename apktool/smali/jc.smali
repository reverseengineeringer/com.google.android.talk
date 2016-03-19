.class public final Ljc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 166
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 167
    new-instance v0, Lje;

    invoke-direct {v0}, Lje;-><init>()V

    sput-object v0, Ljc;->a:Ljf;

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    new-instance v0, Ljf;

    invoke-direct {v0}, Ljf;-><init>()V

    sput-object v0, Ljc;->a:Ljf;

    goto :goto_0
.end method
