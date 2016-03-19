.class public final Ljse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Ljse;->a:Landroid/app/Activity;

    .line 23
    return-void
.end method


# virtual methods
.method a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Ljse;->a:Landroid/app/Activity;

    return-object v0
.end method
