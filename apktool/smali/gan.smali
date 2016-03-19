.class public final Lgan;
.super Ljava/lang/Object;


# static fields
.field static final a:Lgaq;

.field public static final b:Lgap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgaq;

    invoke-direct {v0}, Lgaq;-><init>()V

    sput-object v0, Lgan;->a:Lgaq;

    new-instance v0, Lgap;

    sget-object v1, Lgan;->a:Lgaq;

    invoke-direct {v0, v1}, Lgap;-><init>(Lgaq;)V

    sput-object v0, Lgan;->b:Lgap;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    invoke-static {p0, p1}, Lgap;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
