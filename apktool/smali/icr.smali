.class public Licr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lhye;

.field private b:Licy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Licr;->b:Licy;

    .line 28
    const-class v0, Lhye;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhye;

    iput-object v0, p0, Licr;->a:Lhye;

    .line 29
    return-void
.end method
