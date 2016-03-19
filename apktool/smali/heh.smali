.class public final Lheh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 2015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2016
    iput-object p1, p0, Lheh;->a:Landroid/content/ContentResolver;

    .line 2017
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Lheh;->a:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Lgvj;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lheh;->a:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lgvj;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
