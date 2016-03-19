.class final Lide;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1014
    sget-object v0, Lidd;->c:Landroid/content/Context;

    .line 2014
    invoke-static {v0}, Lidd;->a(Landroid/content/Context;)I

    move-result v0

    .line 103
    sput v0, Lide;->a:I

    return-void
.end method
